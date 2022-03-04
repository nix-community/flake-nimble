{
  description = ''A website management tool. Run the file and access your webpage.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimwc-v6_1_0.flake = false;
  inputs.src-nimwc-v6_1_0.type = "github";
  inputs.src-nimwc-v6_1_0.owner = "ThomasTJdev";
  inputs.src-nimwc-v6_1_0.repo = "nim_websitecreator";
  inputs.src-nimwc-v6_1_0.ref = "refs/tags/v6.1.0";
  inputs.src-nimwc-v6_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."bcrypt".type = "github";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".repo = "flake-nimble";
  inputs."bcrypt".ref = "flake-pinning";
  inputs."bcrypt".dir = "nimpkgs/b/bcrypt";
  inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."contra".type = "github";
  inputs."contra".owner = "riinr";
  inputs."contra".repo = "flake-nimble";
  inputs."contra".ref = "flake-pinning";
  inputs."contra".dir = "nimpkgs/c/contra";
  inputs."contra".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contra".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."datetime2human".type = "github";
  inputs."datetime2human".owner = "riinr";
  inputs."datetime2human".repo = "flake-nimble";
  inputs."datetime2human".ref = "flake-pinning";
  inputs."datetime2human".dir = "nimpkgs/d/datetime2human";
  inputs."datetime2human".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datetime2human".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."firejail".type = "github";
  inputs."firejail".owner = "riinr";
  inputs."firejail".repo = "flake-nimble";
  inputs."firejail".ref = "flake-pinning";
  inputs."firejail".dir = "nimpkgs/f/firejail";
  inputs."firejail".inputs.nixpkgs.follows = "nixpkgs";
  inputs."firejail".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."libravatar".type = "github";
  inputs."libravatar".owner = "riinr";
  inputs."libravatar".repo = "flake-nimble";
  inputs."libravatar".ref = "flake-pinning";
  inputs."libravatar".dir = "nimpkgs/l/libravatar";
  inputs."libravatar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libravatar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."otp".type = "github";
  inputs."otp".owner = "riinr";
  inputs."otp".repo = "flake-nimble";
  inputs."otp".ref = "flake-pinning";
  inputs."otp".dir = "nimpkgs/o/otp";
  inputs."otp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."otp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."recaptcha".type = "github";
  inputs."recaptcha".owner = "riinr";
  inputs."recaptcha".repo = "flake-nimble";
  inputs."recaptcha".ref = "flake-pinning";
  inputs."recaptcha".dir = "nimpkgs/r/recaptcha";
  inputs."recaptcha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."webp".type = "github";
  inputs."webp".owner = "riinr";
  inputs."webp".repo = "flake-nimble";
  inputs."webp".ref = "flake-pinning";
  inputs."webp".dir = "nimpkgs/w/webp";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."packedjson".type = "github";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".repo = "flake-nimble";
  inputs."packedjson".ref = "flake-pinning";
  inputs."packedjson".dir = "nimpkgs/p/packedjson";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimwc-v6_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimwc-v6_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimwc-v6_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}