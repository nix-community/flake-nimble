{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';
  inputs.src-biblioteca_guarrilla-0_1_9.flake = false;
  inputs.src-biblioteca_guarrilla-0_1_9.type = "github";
  inputs.src-biblioteca_guarrilla-0_1_9.owner = "juancarlospaco";
  inputs.src-biblioteca_guarrilla-0_1_9.repo = "biblioteca-guarrilla";
  inputs.src-biblioteca_guarrilla-0_1_9.ref = "refs/tags/0.1.9";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
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

  outputs = { self, nixpkgs, src-biblioteca_guarrilla-0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-biblioteca_guarrilla-0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-biblioteca_guarrilla-0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}