{
  description = ''Convert strings to a slug. Can be used for URLs, file names, IDs etc.'';
  inputs.src-slugify-main.flake = false;
  inputs.src-slugify-main.type = "github";
  inputs.src-slugify-main.owner = "lenniezelk";
  inputs.src-slugify-main.repo = "slugify";
  inputs.src-slugify-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-slugify-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slugify-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slugify-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}