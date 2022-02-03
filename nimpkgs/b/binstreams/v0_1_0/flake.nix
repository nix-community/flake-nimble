{
  description = ''Endianness aware stream I/O for Nim'';
  inputs.src-binstreams-v0_1_0.flake = false;
  inputs.src-binstreams-v0_1_0.type = "github";
  inputs.src-binstreams-v0_1_0.owner = "johnnovak";
  inputs.src-binstreams-v0_1_0.repo = "nim-binstreams";
  inputs.src-binstreams-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-binstreams-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binstreams-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binstreams-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}