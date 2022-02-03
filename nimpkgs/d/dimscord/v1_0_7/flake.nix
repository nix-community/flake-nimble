{
  description = ''A Discord Bot & REST Library.'';
  inputs.src-dimscord-v1_0_7.flake = false;
  inputs.src-dimscord-v1_0_7.type = "github";
  inputs.src-dimscord-v1_0_7.owner = "krisppurg";
  inputs.src-dimscord-v1_0_7.repo = "dimscord";
  inputs.src-dimscord-v1_0_7.ref = "refs/tags/v1.0.7";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."ws".url = "path:../../../w/ws";
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-dimscord-v1_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscord-v1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dimscord-v1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}