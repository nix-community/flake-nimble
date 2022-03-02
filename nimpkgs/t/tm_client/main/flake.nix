{
  description = ''TwineMedia API client library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tm_client-main.flake = false;
  inputs.src-tm_client-main.type = "github";
  inputs.src-tm_client-main.owner = "termermc";
  inputs.src-tm_client-main.repo = "nim-tm-client";
  inputs.src-tm_client-main.ref = "refs/heads/main";
  inputs.src-tm_client-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tm_client-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tm_client-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tm_client-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}