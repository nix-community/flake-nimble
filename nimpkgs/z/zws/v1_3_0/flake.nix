{
  description = ''A command line interface for shortening URLs with ZWS instances'';
  inputs.src-zws-v1_3_0.flake = false;
  inputs.src-zws-v1_3_0.type = "github";
  inputs.src-zws-v1_3_0.owner = "zws-im";
  inputs.src-zws-v1_3_0.repo = "cli";
  inputs.src-zws-v1_3_0.ref = "refs/tags/v1.3.0";
  
  outputs = { self, nixpkgs, src-zws-v1_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zws-v1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zws-v1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}