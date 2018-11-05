
<!-- Modal: modalQuickView -->
<style>
.modal-lg {
	max-width: 80% !important;
}
</style>
<div class="modal" id="{{$modal_id}}" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<div class="row">
					<div class="col-sm-3">
						<div class="box box-primary">
							<div class="box-body box-profile">
								<img class="img-fluid img-thumbnail img-circle"
									src="https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-9/37805091_1763474367033512_7581228777703735296_n.jpg?_nc_cat=0&oh=47c87aebabc411747237e3ef1e6ae263&oe=5C3B28E0"
									alt="User profile picture">

								<h3 class="profile-username text-center">Pramod</h3>

								<p class="text-muted text-center">Software Engineer</p>

								<ul class="list-group list-group-unbordered">
									<li class="list-group-item" id='messags_view' style='cursor: pointer;'><b>Messages</b> <a
										class="pull-right">1,322</a></li>
								</ul>

							</div>
							<!-- /.box-body -->
						</div>
					</div>
					<div class="col-sm-9" id='message_send_view'>
						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title">Viber Messaging</h3>
							</div>
							<div class="box-body">

								<div class="form-group">
									<label for="comment">Comment:</label>
									<textarea class="form-control" rows="5" id="comment"></textarea>
								</div>
								<button type="submit" class="btn btn-primary send_it_now">
									ViberIt! <i class="fa fa-send"></i>
								</button>
								<button type="submit" class="btn btn-warning">
									Draft <i class="fa fa-trash"></i>
								</button>
								<button type="submit" class="btn btn-danger">
									Cancel <i class="fa fa-close"></i>
								</button>


							</div>
						</div>
					</div>
					<div class="col-sm-5" id='chat_view' style='display:none'>
						<div class="box box-warning direct-chat direct-chat-warning">
							<div class="box-header with-border">
								<h3 class="box-title">Chat History</h3>
							</div>
							<div class="box-body">
								<!-- DIRECT CHAT -->

										<!-- Conversations are loaded here -->
										<div class="direct-chat-messages">
											<!-- Message. Default to the left -->
											<div class="direct-chat-msg">
												<div class="direct-chat-info clearfix">
													<span class="direct-chat-name pull-left">Alexander Pierce</span>
													<span class="direct-chat-timestamp pull-right">23 Jan 2:00
														pm</span>
												</div>
												<!-- /.direct-chat-info -->
												<img class="direct-chat-img"
													src="{{ asset('images/dist/user1-128x128.jpg')}}" alt="message user image">
												<!-- /.direct-chat-img -->
												<div class="direct-chat-text">Is this template really for
													free? That's unbelievable!</div>
												<!-- /.direct-chat-text -->
											</div>
											<!-- /.direct-chat-msg -->

											<!-- Message to the right -->
											<div class="direct-chat-msg right">
												<div class="direct-chat-info clearfix">
													<span class="direct-chat-name pull-right">Sarah Bullock</span>
													<span class="direct-chat-timestamp pull-left">23 Jan 2:05
														pm</span>
												</div>
												<!-- /.direct-chat-info -->
												<img class="direct-chat-img"
													src="{{ asset('images/dist/user3-128x128.jpg')}}" alt="message user image">
												<!-- /.direct-chat-img -->
												<div class="direct-chat-text">You better believe it!</div>
												<!-- /.direct-chat-text -->
											</div>
											<!-- /.direct-chat-msg -->

											<!-- Message. Default to the left -->
											<div class="direct-chat-msg">
												<div class="direct-chat-info clearfix">
													<span class="direct-chat-name pull-left">Alexander Pierce</span>
													<span class="direct-chat-timestamp pull-right">23 Jan 5:37
														pm</span>
												</div>
												<!-- /.direct-chat-info -->
												<img class="direct-chat-img"
													src="{{ asset('images/dist/user1-128x128.jpg')}}" alt="message user image">
												<!-- /.direct-chat-img -->
												<div class="direct-chat-text">Working with AdminLTE on a
													great new app! Wanna join?</div>
												<!-- /.direct-chat-text -->
											</div>
											<!-- /.direct-chat-msg -->

											<!-- Message to the right -->
											<div class="direct-chat-msg right">
												<div class="direct-chat-info clearfix">
													<span class="direct-chat-name pull-right">Sarah Bullock</span>
													<span class="direct-chat-timestamp pull-left">23 Jan 6:10
														pm</span>
												</div>
												<!-- /.direct-chat-info -->
												<img class="direct-chat-img"
													src="{{ asset('images/dist/user3-128x128.jpg')}}" alt="message user image">
												<!-- /.direct-chat-img -->
												<div class="direct-chat-text">I would love to.</div>
												<!-- /.direct-chat-text -->
											</div>
											<!-- /.direct-chat-msg -->

										</div>
										<!--/.direct-chat-messages-->


								<!--/.direct-chat -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal: modalQuickView -->