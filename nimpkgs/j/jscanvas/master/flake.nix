{
  description = ''a wrapper for the Canvas API'';
  inputs.src-jscanvas-master.flake = false;
  inputs.src-jscanvas-master.type = "github";
  inputs.src-jscanvas-master.owner = "planetis-m";
  inputs.src-jscanvas-master.repo = "jscanvas";
  inputs.src-jscanvas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jscanvas-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jscanvas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jscanvas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}