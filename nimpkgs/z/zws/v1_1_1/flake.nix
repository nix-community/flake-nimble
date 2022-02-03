{
  description = ''A command line interface for shortening URLs with ZWS instances'';
  inputs.src-zws-v1_1_1.flake = false;
  inputs.src-zws-v1_1_1.type = "github";
  inputs.src-zws-v1_1_1.owner = "zws-im";
  inputs.src-zws-v1_1_1.repo = "cli";
  inputs.src-zws-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-zws-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zws-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zws-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}