{
  description = ''Collection of string, parsing, pointer, ... utilities.'';
  inputs.src-utils-master.flake = false;
  inputs.src-utils-master.type = "github";
  inputs.src-utils-master.owner = "nim-appkit";
  inputs.src-utils-master.repo = "utils";
  inputs.src-utils-master.ref = "refs/heads/master";
  
  
  inputs."values".url = "path:../../../v/values";
  inputs."values".type = "github";
  inputs."values".owner = "riinr";
  inputs."values".repo = "flake-nimble";
  inputs."values".ref = "flake-pinning";
  inputs."values".dir = "nimpkgs/v/values";

  outputs = { self, nixpkgs, src-utils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-utils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-utils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}