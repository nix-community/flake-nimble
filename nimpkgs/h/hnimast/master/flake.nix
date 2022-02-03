{
  description = ''User-friendly wrapper for nim ast'';
  inputs.src-hnimast-master.flake = false;
  inputs.src-hnimast-master.type = "github";
  inputs.src-hnimast-master.owner = "haxscramper";
  inputs.src-hnimast-master.repo = "hnimast";
  inputs.src-hnimast-master.ref = "refs/heads/master";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hnimast-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hnimast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hnimast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}