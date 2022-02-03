{
  description = ''IMAP client library'';
  inputs.src-imap-v0_3_0.flake = false;
  inputs.src-imap-v0_3_0.type = "other";
  inputs.src-imap-v0_3_0.owner = "~ehmry";
  inputs.src-imap-v0_3_0.repo = "nim_imap";
  inputs.src-imap-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-imap-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imap-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imap-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}