@extends('layout')

@section('content')

<h1 class="title">Edit Project</h1>

<form method="POST" action="/projects">
 
	{{ csrf_field() }}

	 <div class="field">
	  <label class="label">Title</label>
	  <div class="control">
	    <input class="input {{ $errors->has('title') ? 'is-danger' : '' }}" type="text" name="title" value=" {{ old('title') }}"placeholder="Title">
	  </div>
	</div>

	<div class="field">
		<label class="label">Description</label>
		 <div class="control">
		   <textarea class="textarea {{ $errors->has('description') ? 'is-danger' : '' }}"  name="description" placeholder="Description"> {{ old('title') }}</textarea>
		</div>
	</div>


	<div class="field">
			 
	  	<div class="control">
		  <button type="submit" class="button is-link">Create Project</button>
		</div>
	</div> 

	@if($errors->any())
	<div class="notification is-danger">
		<ul>
			@foreach($errors->all() as $error)

			<li> {{ $error }}</li>

			@endforeach
		</ul>
	</div>
	@endif
</form> 

@endsection


