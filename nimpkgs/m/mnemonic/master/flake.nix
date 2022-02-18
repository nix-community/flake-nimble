{
  description = ''Create memorable sentences from byte sequences.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mnemonic-master.flake = false;
  inputs.src-mnemonic-master.type = "github";
  inputs.src-mnemonic-master.owner = "markspanbroek";
  inputs.src-mnemonic-master.repo = "mnemonic";
  inputs.src-mnemonic-master.ref = "refs/heads/master";
  
  
  inputs."nimsha2".type = "github";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".repo = "flake-nimble";
  inputs."nimsha2".ref = "flake-pinning";
  inputs."nimsha2".dir = "nimpkgs/n/nimsha2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mnemonic-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mnemonic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mnemonic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}