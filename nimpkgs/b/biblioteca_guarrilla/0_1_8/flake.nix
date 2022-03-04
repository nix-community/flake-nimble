{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-biblioteca_guarrilla-0_1_8.flake = false;
  inputs.src-biblioteca_guarrilla-0_1_8.type = "github";
  inputs.src-biblioteca_guarrilla-0_1_8.owner = "juancarlospaco";
  inputs.src-biblioteca_guarrilla-0_1_8.repo = "biblioteca-guarrilla";
  inputs.src-biblioteca_guarrilla-0_1_8.ref = "refs/tags/0.1.8";
  inputs.src-biblioteca_guarrilla-0_1_8.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."webp".type = "github";
  inputs."webp".owner = "riinr";
  inputs."webp".repo = "flake-nimble";
  inputs."webp".ref = "flake-pinning";
  inputs."webp".dir = "nimpkgs/w/webp";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-biblioteca_guarrilla-0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-biblioteca_guarrilla-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-biblioteca_guarrilla-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}