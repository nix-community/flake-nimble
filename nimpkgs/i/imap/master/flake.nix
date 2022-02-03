{
  description = ''IMAP client library'';
  inputs.src-imap-master.flake = false;
  inputs.src-imap-master.type = "other";
  inputs.src-imap-master.owner = "~ehmry";
  inputs.src-imap-master.repo = "nim_imap";
  inputs.src-imap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-imap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}