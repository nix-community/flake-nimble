{
  description = ''HPACK (Header Compression for HTTP/2)'';
  inputs.src-hpack-v0_1.flake = false;
  inputs.src-hpack-v0_1.type = "github";
  inputs.src-hpack-v0_1.owner = "nitely";
  inputs.src-hpack-v0_1.repo = "nim-hpack";
  inputs.src-hpack-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, src-hpack-v0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hpack-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hpack-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}