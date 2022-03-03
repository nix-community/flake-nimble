{
  description = ''Dog API client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dogapi-main.flake = false;
  inputs.src-dogapi-main.type = "github";
  inputs.src-dogapi-main.owner = "thexxiv";
  inputs.src-dogapi-main.repo = "dogapi-nim";
  inputs.src-dogapi-main.ref = "refs/heads/main";
  inputs.src-dogapi-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dogapi-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dogapi-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dogapi-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}