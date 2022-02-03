{
  description = ''Random curated Fonts and pastel Colors for your UI/UX design, design for non-designers.'';
  inputs.src-random_font_color-master.flake = false;
  inputs.src-random_font_color-master.type = "github";
  inputs.src-random_font_color-master.owner = "juancarlospaco";
  inputs.src-random_font_color-master.repo = "nim-random-font-color";
  inputs.src-random_font_color-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-random_font_color-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random_font_color-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-random_font_color-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}