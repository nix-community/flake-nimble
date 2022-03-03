{
  description = ''IMAP client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-imap-master.flake = false;
  inputs.src-imap-master.type = "other";
  inputs.src-imap-master.owner = "~ehmry";
  inputs.src-imap-master.repo = "nim_imap";
  inputs.src-imap-master.ref = "refs/heads/master";
  inputs.src-imap-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-imap-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}