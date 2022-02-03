{
  description = ''Directory listing tool'';
  inputs.src-lq-master.flake = false;
  inputs.src-lq-master.type = "github";
  inputs.src-lq-master.owner = "madprops";
  inputs.src-lq-master.repo = "lq";
  inputs.src-lq-master.ref = "refs/heads/master";
  
  
  inputs."nap".url = "path:../../../n/nap";
  inputs."nap".type = "github";
  inputs."nap".owner = "riinr";
  inputs."nap".repo = "flake-nimble";
  inputs."nap".ref = "flake-pinning";
  inputs."nap".dir = "nimpkgs/n/nap";

  
  inputs."parsetoml".url = "path:../../../p/parsetoml";
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, src-lq-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}