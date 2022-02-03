{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_5_9.flake = false;
  inputs.src-zippy-0_5_9.type = "github";
  inputs.src-zippy-0_5_9.owner = "guzba";
  inputs.src-zippy-0_5_9.repo = "zippy";
  inputs.src-zippy-0_5_9.ref = "refs/tags/0.5.9";
  
  outputs = { self, nixpkgs, src-zippy-0_5_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_5_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_5_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}