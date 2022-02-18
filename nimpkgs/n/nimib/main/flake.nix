{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimib-main.flake = false;
  inputs.src-nimib-main.type = "github";
  inputs.src-nimib-main.owner = "pietroppeter";
  inputs.src-nimib-main.repo = "nimib";
  inputs.src-nimib-main.ref = "refs/heads/main";
  
  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."mustache".type = "github";
  inputs."mustache".owner = "riinr";
  inputs."mustache".repo = "flake-nimble";
  inputs."mustache".ref = "flake-pinning";
  inputs."mustache".dir = "nimpkgs/m/mustache";

  
  inputs."toml_serialization".type = "github";
  inputs."toml_serialization".owner = "riinr";
  inputs."toml_serialization".repo = "flake-nimble";
  inputs."toml_serialization".ref = "flake-pinning";
  inputs."toml_serialization".dir = "nimpkgs/t/toml_serialization";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimib-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimib-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimib-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}