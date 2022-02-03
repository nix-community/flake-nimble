{
  description = ''IMAP client library'';
  inputs.src-imap-v0_2_2.flake = false;
  inputs.src-imap-v0_2_2.type = "other";
  inputs.src-imap-v0_2_2.owner = "~ehmry";
  inputs.src-imap-v0_2_2.repo = "nim_imap";
  inputs.src-imap-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-imap-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imap-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imap-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}