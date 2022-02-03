{
  description = ''A D3.js wrapper for Nim'';
  inputs.src-d3-master.flake = false;
  inputs.src-d3-master.type = "github";
  inputs.src-d3-master.owner = "hiteshjasani";
  inputs.src-d3-master.repo = "nim-d3";
  inputs.src-d3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-d3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-d3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}