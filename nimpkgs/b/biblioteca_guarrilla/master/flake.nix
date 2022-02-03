{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';
  inputs.src-biblioteca_guarrilla-master.flake = false;
  inputs.src-biblioteca_guarrilla-master.type = "github";
  inputs.src-biblioteca_guarrilla-master.owner = "juancarlospaco";
  inputs.src-biblioteca_guarrilla-master.repo = "biblioteca-guarrilla";
  inputs.src-biblioteca_guarrilla-master.ref = "refs/heads/master";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."webp".url = "path:../../../w/webp";
  inputs."webp".type = "github";
  inputs."webp".owner = "riinr";
  inputs."webp".repo = "flake-nimble";
  inputs."webp".ref = "flake-pinning";
  inputs."webp".dir = "nimpkgs/w/webp";

  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-biblioteca_guarrilla-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-biblioteca_guarrilla-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-biblioteca_guarrilla-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}