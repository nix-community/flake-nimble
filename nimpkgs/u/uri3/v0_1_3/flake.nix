{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';
  inputs.src-uri3-v0_1_3.flake = false;
  inputs.src-uri3-v0_1_3.type = "github";
  inputs.src-uri3-v0_1_3.owner = "zendbit";
  inputs.src-uri3-v0_1_3.repo = "nim.uri3";
  inputs.src-uri3-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-uri3-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uri3-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uri3-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}