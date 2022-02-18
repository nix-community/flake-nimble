{
  description = ''Small library for working with strings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-prettystr-main.flake = false;
  inputs.src-prettystr-main.type = "github";
  inputs.src-prettystr-main.owner = "prettybauble";
  inputs.src-prettystr-main.repo = "prettystr";
  inputs.src-prettystr-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-prettystr-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prettystr-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prettystr-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}