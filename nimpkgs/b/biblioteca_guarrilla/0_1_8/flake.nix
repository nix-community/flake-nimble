{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-biblioteca_guarrilla-0_1_8.flake = false;
  inputs.src-biblioteca_guarrilla-0_1_8.type = "github";
  inputs.src-biblioteca_guarrilla-0_1_8.owner = "juancarlospaco";
  inputs.src-biblioteca_guarrilla-0_1_8.repo = "biblioteca-guarrilla";
  inputs.src-biblioteca_guarrilla-0_1_8.ref = "refs/tags/0.1.8";
  
  
  inputs."webp".type = "github";
  inputs."webp".owner = "riinr";
  inputs."webp".repo = "flake-nimble";
  inputs."webp".ref = "flake-pinning";
  inputs."webp".dir = "nimpkgs/w/webp";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-biblioteca_guarrilla-0_1_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-biblioteca_guarrilla-0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-biblioteca_guarrilla-0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}