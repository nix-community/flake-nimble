{
  description = ''Pastebin API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-pastebin-master.flake = false;
  inputs.src-pastebin-master.type = "github";
  inputs.src-pastebin-master.owner = "achesak";
  inputs.src-pastebin-master.repo = "nim-pastebin";
  inputs.src-pastebin-master.ref = "refs/heads/master";
  inputs.src-pastebin-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pastebin-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pastebin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pastebin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}