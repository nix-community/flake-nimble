{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-master.flake = false;
  inputs.src-zippy-master.type = "github";
  inputs.src-zippy-master.owner = "guzba";
  inputs.src-zippy-master.repo = "zippy";
  inputs.src-zippy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-zippy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}