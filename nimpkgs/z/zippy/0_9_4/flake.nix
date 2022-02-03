{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_9_4.flake = false;
  inputs.src-zippy-0_9_4.type = "github";
  inputs.src-zippy-0_9_4.owner = "guzba";
  inputs.src-zippy-0_9_4.repo = "zippy";
  inputs.src-zippy-0_9_4.ref = "refs/tags/0.9.4";
  
  outputs = { self, nixpkgs, src-zippy-0_9_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_9_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_9_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}