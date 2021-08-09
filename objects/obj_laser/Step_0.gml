/// @description Despawn

//Fade out
image_alpha -= 0.05;
image_xscale -= 0.05;

//Destroy laser once it's completely faded out
if (image_alpha <= 0)
{
	instance_destroy();
}