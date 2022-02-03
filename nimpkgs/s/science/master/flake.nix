{
  description = ''A library for scientific computations in pure Nim'';
  inputs.src-science-master.flake = false;
  inputs.src-science-master.type = "github";
  inputs.src-science-master.owner = "ruivieira";
  inputs.src-science-master.repo = "nim-science";
  inputs.src-science-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-science-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-science-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-science-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}