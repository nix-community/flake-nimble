{
  description = ''Convert Ogham inscriptions to latin text & vice versa.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ogham-main.flake = false;
  inputs.src-ogham-main.type = "github";
  inputs.src-ogham-main.owner = "stscoundrel";
  inputs.src-ogham-main.repo = "ogham-nim";
  inputs.src-ogham-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ogham-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ogham-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ogham-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}