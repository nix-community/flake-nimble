{
  description = ''A website management tool. Run the file and access your webpage.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimwc-v5_5_2.flake = false;
  inputs.src-nimwc-v5_5_2.type = "github";
  inputs.src-nimwc-v5_5_2.owner = "ThomasTJdev";
  inputs.src-nimwc-v5_5_2.repo = "nim_websitecreator";
  inputs.src-nimwc-v5_5_2.ref = "refs/tags/v5.5.2";
  
  
  inputs."bcrypt".type = "github";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".repo = "flake-nimble";
  inputs."bcrypt".ref = "flake-pinning";
  inputs."bcrypt".dir = "nimpkgs/b/bcrypt";

  
  inputs."contra".type = "github";
  inputs."contra".owner = "riinr";
  inputs."contra".repo = "flake-nimble";
  inputs."contra".ref = "flake-pinning";
  inputs."contra".dir = "nimpkgs/c/contra";

  
  inputs."datetime2human".type = "github";
  inputs."datetime2human".owner = "riinr";
  inputs."datetime2human".repo = "flake-nimble";
  inputs."datetime2human".ref = "flake-pinning";
  inputs."datetime2human".dir = "nimpkgs/d/datetime2human";

  
  inputs."firejail".type = "github";
  inputs."firejail".owner = "riinr";
  inputs."firejail".repo = "flake-nimble";
  inputs."firejail".ref = "flake-pinning";
  inputs."firejail".dir = "nimpkgs/f/firejail";

  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."libravatar".type = "github";
  inputs."libravatar".owner = "riinr";
  inputs."libravatar".repo = "flake-nimble";
  inputs."libravatar".ref = "flake-pinning";
  inputs."libravatar".dir = "nimpkgs/l/libravatar";

  
  inputs."otp".type = "github";
  inputs."otp".owner = "riinr";
  inputs."otp".repo = "flake-nimble";
  inputs."otp".ref = "flake-pinning";
  inputs."otp".dir = "nimpkgs/o/otp";

  
  inputs."recaptcha".type = "github";
  inputs."recaptcha".owner = "riinr";
  inputs."recaptcha".repo = "flake-nimble";
  inputs."recaptcha".ref = "flake-pinning";
  inputs."recaptcha".dir = "nimpkgs/r/recaptcha";

  
  inputs."webp".type = "github";
  inputs."webp".owner = "riinr";
  inputs."webp".repo = "flake-nimble";
  inputs."webp".ref = "flake-pinning";
  inputs."webp".dir = "nimpkgs/w/webp";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimwc-v5_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimwc-v5_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimwc-v5_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}