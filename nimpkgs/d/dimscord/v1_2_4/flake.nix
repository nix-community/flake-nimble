{
  description = ''A Discord Bot & REST Library.'';
  inputs.src-dimscord-v1_2_4.flake = false;
  inputs.src-dimscord-v1_2_4.type = "github";
  inputs.src-dimscord-v1_2_4.owner = "krisppurg";
  inputs.src-dimscord-v1_2_4.repo = "dimscord";
  inputs.src-dimscord-v1_2_4.ref = "refs/tags/v1.2.4";
  
  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."libsodium".type = "github";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".repo = "flake-nimble";
  inputs."libsodium".ref = "flake-pinning";
  inputs."libsodium".dir = "nimpkgs/l/libsodium";

  
  inputs."flatty".type = "github";
  inputs."flatty".owner = "riinr";
  inputs."flatty".repo = "flake-nimble";
  inputs."flatty".ref = "flake-pinning";
  inputs."flatty".dir = "nimpkgs/f/flatty";

  outputs = { self, nixpkgs, src-dimscord-v1_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscord-v1_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dimscord-v1_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}