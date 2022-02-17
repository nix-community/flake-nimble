{
  description = ''A Jester web plugin that allows easy message passing between pages using a browser cookie.'';
  inputs.src-jestercookiemsgs-master.flake = false;
  inputs.src-jestercookiemsgs-master.type = "github";
  inputs.src-jestercookiemsgs-master.owner = "JohnAD";
  inputs.src-jestercookiemsgs-master.repo = "jestercookiemsgs";
  inputs.src-jestercookiemsgs-master.ref = "refs/heads/master";
  
  
  inputs."jesterwithplugins".type = "github";
  inputs."jesterwithplugins".owner = "riinr";
  inputs."jesterwithplugins".repo = "flake-nimble";
  inputs."jesterwithplugins".ref = "flake-pinning";
  inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";

  outputs = { self, nixpkgs, src-jestercookiemsgs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jestercookiemsgs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jestercookiemsgs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}