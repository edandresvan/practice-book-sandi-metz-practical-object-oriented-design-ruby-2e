use std::f32::consts::PI;

trait Circular {
  fn diameter(&self) -> f32;
}

struct Wheel {
  rim: f32,
  tire: f32,
}

impl Wheel {
  fn new(rim: f32, tire: f32) -> Self {
    Self { rim, tire }
  }

  fn circumference(&self) -> f32 {
    self.diameter() * PI
  }
}

impl Circular for Wheel {
  fn diameter(&self) -> f32 {
    self.rim + (self.tire * 2.0)
  }
}

struct Gear {
  chainring: u16,
  cog: u16,
}

impl Gear {
  fn new(chainring: u16, cog: u16) -> Self {
    Self { chainring, cog }
  }

  fn ratio(&self) -> f32 {
    (self.chainring as f32) / (self.cog as f32)
  }

  fn gear_inches(&self, circle: &impl Circular) -> f32 {
    self.ratio() * circle.diameter()
  }
}

fn main() {
  let wheel: Wheel = Wheel::new(26.0, 1.5);
  let gear: Gear = Gear::new(52, 11);

  println!("Gear inches:\t{}", gear.gear_inches(&wheel));
}
