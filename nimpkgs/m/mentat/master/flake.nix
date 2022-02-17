{
  description = ''A Nim library for data science and machine learning'';
  inputs.src-mentat-master.flake = false;
  inputs.src-mentat-master.type = "github";
  inputs.src-mentat-master.owner = "ruivieira";
  inputs.src-mentat-master.repo = "nim-mentat";
  inputs.src-mentat-master.ref = "refs/heads/master";
  
  
  inputs."science".type = "github";
  inputs."science".owner = "riinr";
  inputs."science".repo = "flake-nimble";
  inputs."science".ref = "flake-pinning";
  inputs."science".dir = "nimpkgs/s/science";

  outputs = { self, nixpkgs, src-mentat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mentat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mentat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}