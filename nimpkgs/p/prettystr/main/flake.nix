{
  description = ''Small library for working with strings'';
  inputs.src-prettystr-main.flake = false;
  inputs.src-prettystr-main.type = "github";
  inputs.src-prettystr-main.owner = "prettybauble";
  inputs.src-prettystr-main.repo = "prettystr";
  inputs.src-prettystr-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-prettystr-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prettystr-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prettystr-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}