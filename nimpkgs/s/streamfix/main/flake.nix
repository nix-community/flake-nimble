{
  description = ''FIX Protocol streaming parser (Financial Information eXchange)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-streamfix-main.flake = false;
  inputs.src-streamfix-main.type = "github";
  inputs.src-streamfix-main.owner = "inv2004";
  inputs.src-streamfix-main.repo = "streamfix";
  inputs.src-streamfix-main.ref = "refs/heads/main";
  inputs.src-streamfix-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-streamfix-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-streamfix-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-streamfix-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}