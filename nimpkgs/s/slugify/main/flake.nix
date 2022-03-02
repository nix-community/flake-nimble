{
  description = ''Convert strings to a slug. Can be used for URLs, file names, IDs etc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-slugify-main.flake = false;
  inputs.src-slugify-main.type = "github";
  inputs.src-slugify-main.owner = "lenniezelk";
  inputs.src-slugify-main.repo = "slugify";
  inputs.src-slugify-main.ref = "refs/heads/main";
  inputs.src-slugify-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-slugify-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slugify-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-slugify-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}