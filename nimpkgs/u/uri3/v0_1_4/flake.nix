{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';
  inputs.src-uri3-v0_1_4.flake = false;
  inputs.src-uri3-v0_1_4.type = "github";
  inputs.src-uri3-v0_1_4.owner = "zendbit";
  inputs.src-uri3-v0_1_4.repo = "nim.uri3";
  inputs.src-uri3-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-uri3-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uri3-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uri3-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}