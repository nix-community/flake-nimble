{
  description = ''A natural language library.'';
  inputs.src-tome-main.flake = false;
  inputs.src-tome-main.type = "github";
  inputs.src-tome-main.owner = "dizzyliam";
  inputs.src-tome-main.repo = "tome";
  inputs.src-tome-main.ref = "refs/heads/main";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."untar".url = "path:../../../u/untar";
  inputs."untar".type = "github";
  inputs."untar".owner = "riinr";
  inputs."untar".repo = "flake-nimble";
  inputs."untar".ref = "flake-pinning";
  inputs."untar".dir = "nimpkgs/u/untar";

  outputs = { self, nixpkgs, src-tome-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tome-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tome-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}