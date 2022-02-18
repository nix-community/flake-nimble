{
  description = ''xam'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xam-main.flake = false;
  inputs.src-xam-main.type = "github";
  inputs.src-xam-main.owner = "j-a-s-d";
  inputs.src-xam-main.repo = "xam";
  inputs.src-xam-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xam-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xam-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xam-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}