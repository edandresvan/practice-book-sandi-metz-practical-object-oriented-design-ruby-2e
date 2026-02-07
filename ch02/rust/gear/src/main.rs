use std::f32::consts::PI;

pub struct Wheel {
  rim: f32,
  tire: f32,
}

impl Wheel {
  pub fn new(rim: f32, tire: f32) -> Wheel {
    Wheel { rim, tire }
  }

  pub fn diameter(&self) -> f32 {
    self.rim + (self.tire * 2.0)
  }

  pub fn circumference(&self) -> f32 {
    self.diameter() * PI
  }
}

pub struct Gear {
  chainring: u16,
  cog: u16,
  wheel: Option<Wheel>,
}

impl Gear {
  pub fn new(chainring: u16, cog: u16, wheel: Option<Wheel>) -> Gear {
    Gear {
      chainring,
      cog,
      wheel,
    }
  }

  pub fn ratio(&self) -> f32 {
    (self.chainring as f32) / (self.cog as f32)
  }

  pub fn gear_inches(&self) -> f32 {
    match &self.wheel {
      Some(the_wheel) => self.ratio() * the_wheel.diameter(),
      None => 0.0,
    }
  }
}

fn main() {
  let wheel: Wheel = Wheel::new(26.0, 1.5);
  println!("Circumference:\t{}", wheel.circumference());

  let gear_1: Gear = Gear::new(52, 11, Some(wheel));
  println!("Gear inches:\t{}", gear_1.gear_inches());

  let gear_2: Gear = Gear::new(52, 11, None);
  println!("Gear ratio:\t{}", gear_2.ratio())
}
