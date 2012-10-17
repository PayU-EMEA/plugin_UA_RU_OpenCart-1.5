<?php 
class ModelPaymentPayU extends Model {
	public function getMethod($address, $total) {
		$this->load->language('payment/payu');
		$method_data = array();

		$method_data = array(
				'code'       => 'payu',
				'title'      => $this->language->get('text_title'),
				'sort_order' => $this->config->get('payu_sort_order')
			);
		return $method_data;
	}
}
?>