{
  description = ''Small library for working with colors'';
  inputs.src-prettyclr-main.flake = false;
  inputs.src-prettyclr-main.type = "github";
  inputs.src-prettyclr-main.owner = "prettybauble";
  inputs.src-prettyclr-main.repo = "prettyclr";
  inputs.src-prettyclr-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-prettyclr-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prettyclr-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prettyclr-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}