{
  description = ''Youtube data extractor'';
  inputs.src-ytextractor-master.flake = false;
  inputs.src-ytextractor-master.type = "github";
  inputs.src-ytextractor-master.owner = "thisago";
  inputs.src-ytextractor-master.repo = "ytextractor";
  inputs.src-ytextractor-master.ref = "refs/heads/master";
  
  
  inputs."ajax".url = "path:../../../a/ajax";
  inputs."ajax".type = "github";
  inputs."ajax".owner = "riinr";
  inputs."ajax".repo = "flake-nimble";
  inputs."ajax".ref = "flake-pinning";
  inputs."ajax".dir = "nimpkgs/a/ajax";

  outputs = { self, nixpkgs, src-ytextractor-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ytextractor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ytextractor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}