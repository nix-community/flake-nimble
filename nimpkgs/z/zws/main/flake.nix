{
  description = ''A command line interface for shortening URLs with ZWS instances'';
  inputs.src-zws-main.flake = false;
  inputs.src-zws-main.type = "github";
  inputs.src-zws-main.owner = "zws-im";
  inputs.src-zws-main.repo = "cli";
  inputs.src-zws-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-zws-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zws-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zws-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}