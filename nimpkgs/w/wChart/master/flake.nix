{
  description = ''Chart plugin for wNim.'';
  inputs.src-wChart-master.flake = false;
  inputs.src-wChart-master.type = "github";
  inputs.src-wChart-master.owner = "bunkford";
  inputs.src-wChart-master.repo = "wChart";
  inputs.src-wChart-master.ref = "refs/heads/master";
  
  
  inputs."wnim".url = "path:../../../w/wnim";
  inputs."wnim".type = "github";
  inputs."wnim".owner = "riinr";
  inputs."wnim".repo = "flake-nimble";
  inputs."wnim".ref = "flake-pinning";
  inputs."wnim".dir = "nimpkgs/w/wnim";

  outputs = { self, nixpkgs, src-wChart-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wChart-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wChart-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}