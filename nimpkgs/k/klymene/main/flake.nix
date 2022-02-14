{
  description = ''Create beautiful command line interfaces in Nim. Based on docopt.'';
  inputs.src-klymene-main.flake = false;
  inputs.src-klymene-main.type = "github";
  inputs.src-klymene-main.owner = "georgelemon";
  inputs.src-klymene-main.repo = "clymene";
  inputs.src-klymene-main.ref = "refs/heads/main";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."unicodedb".url = "path:../../../u/unicodedb";
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."illwill".url = "path:../../../i/illwill";
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, src-klymene-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-klymene-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-klymene-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}