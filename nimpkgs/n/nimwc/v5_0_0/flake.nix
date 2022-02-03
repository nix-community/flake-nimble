{
  description = ''A website management tool. Run the file and access your webpage.'';
  inputs.src-nimwc-v5_0_0.flake = false;
  inputs.src-nimwc-v5_0_0.type = "github";
  inputs.src-nimwc-v5_0_0.owner = "ThomasTJdev";
  inputs.src-nimwc-v5_0_0.repo = "nim_websitecreator";
  inputs.src-nimwc-v5_0_0.ref = "refs/tags/v5.0.0";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."recaptcha".url = "path:../../../r/recaptcha";
  inputs."recaptcha".type = "github";
  inputs."recaptcha".owner = "riinr";
  inputs."recaptcha".repo = "flake-nimble";
  inputs."recaptcha".ref = "flake-pinning";
  inputs."recaptcha".dir = "nimpkgs/r/recaptcha";

  
  inputs."bcrypt".url = "path:../../../b/bcrypt";
  inputs."bcrypt".type = "github";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".repo = "flake-nimble";
  inputs."bcrypt".ref = "flake-pinning";
  inputs."bcrypt".dir = "nimpkgs/b/bcrypt";

  
  inputs."datetime2human".url = "path:../../../d/datetime2human";
  inputs."datetime2human".type = "github";
  inputs."datetime2human".owner = "riinr";
  inputs."datetime2human".repo = "flake-nimble";
  inputs."datetime2human".ref = "flake-pinning";
  inputs."datetime2human".dir = "nimpkgs/d/datetime2human";

  
  inputs."otp".url = "path:../../../o/otp";
  inputs."otp".type = "github";
  inputs."otp".owner = "riinr";
  inputs."otp".repo = "flake-nimble";
  inputs."otp".ref = "flake-pinning";
  inputs."otp".dir = "nimpkgs/o/otp";

  
  inputs."firejail".url = "path:../../../f/firejail";
  inputs."firejail".type = "github";
  inputs."firejail".owner = "riinr";
  inputs."firejail".repo = "flake-nimble";
  inputs."firejail".ref = "flake-pinning";
  inputs."firejail".dir = "nimpkgs/f/firejail";

  
  inputs."webp".url = "path:../../../w/webp";
  inputs."webp".type = "github";
  inputs."webp".owner = "riinr";
  inputs."webp".repo = "flake-nimble";
  inputs."webp".ref = "flake-pinning";
  inputs."webp".dir = "nimpkgs/w/webp";

  outputs = { self, nixpkgs, src-nimwc-v5_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimwc-v5_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimwc-v5_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}