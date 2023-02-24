<?php
namespace Opencart\Catalog\Controller\Mail;
/**
 * checkout后发送邮件
 */
class consumer extends \Opencart\System\Engine\Controller {
	public function index(): void {
		printf(0);

		$this->load->language('mail/consumer');

		$store_name = html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8');

		$data['名字'] = $_POST['inputName'];
		$data['公司名称'] = $_POST['inputCompanyName'];
		$data['邮箱地址'] = $_POST['inputEmailAddress'];
		$data['联系电话'] = $_POST['inputContactNumber'];
		$data['地址信息'] = $_POST['inputShippingAddress'];
		$data['其他信息'] = $_POST['inputShippingDescription'];
		$data['商品信息'] = $_POST['checkoutConfirm'];

		if ($this->config->get('config_mail_engine')) {
			$mail_option = [
				'parameter'     => $this->config->get('config_mail_parameter'),
				'smtp_hostname' => $this->config->get('config_mail_smtp_hostname'),
				'smtp_username' => $this->config->get('config_mail_smtp_username'),
				'smtp_password' => html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8'),
				'smtp_port'     => $this->config->get('config_mail_smtp_port'),
				'smtp_timeout'  => $this->config->get('config_mail_smtp_timeout')
			];

			$mail = new \Opencart\System\Library\Mail($this->config->get('config_mail_engine'), $mail_option);
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_mail_smtp_username'));
			$mail->setSender($store_name);
			$mail->setSubject('客户询盘');
			$dataJson = json_encode($data, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
			$mail->setHtml($dataJson);
			$mail->send();
		}
		$this->cart->clear();
	}
}
