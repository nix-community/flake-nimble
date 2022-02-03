{
  description = ''a down to earth webframework in nim'';
  inputs.src-servy-master.flake = false;
  inputs.src-servy-master.type = "github";
  inputs.src-servy-master.owner = "xmonader";
  inputs.src-servy-master.repo = "nim-servy";
  inputs.src-servy-master.ref = "refs/heads/master";
  
  
  inputs."terminaltables".url = "path:../../../t/terminaltables";
  inputs."terminaltables".type = "github";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".repo = "flake-nimble";
  inputs."terminaltables".ref = "flake-pinning";
  inputs."terminaltables".dir = "nimpkgs/t/terminaltables";

  
  inputs."ws".url = "path:../../../w/ws";
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, src-servy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-servy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-servy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}