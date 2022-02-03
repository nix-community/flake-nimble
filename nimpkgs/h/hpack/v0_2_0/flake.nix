{
  description = ''HPACK (Header Compression for HTTP/2)'';
  inputs.src-hpack-v0_2_0.flake = false;
  inputs.src-hpack-v0_2_0.type = "github";
  inputs.src-hpack-v0_2_0.owner = "nitely";
  inputs.src-hpack-v0_2_0.repo = "nim-hpack";
  inputs.src-hpack-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-hpack-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hpack-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hpack-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}