{
  description = ''Tool to clean up filenames shared on Dropbox'';
  inputs.src-dropbox_filename_sanitizer-master.flake = false;
  inputs.src-dropbox_filename_sanitizer-master.type = "github";
  inputs.src-dropbox_filename_sanitizer-master.owner = "Araq";
  inputs.src-dropbox_filename_sanitizer-master.repo = "dropbox_filename_sanitizer";
  inputs.src-dropbox_filename_sanitizer-master.ref = "refs/heads/master";
  
  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  
  inputs."argument_parser".type = "github";
  inputs."argument_parser".owner = "riinr";
  inputs."argument_parser".repo = "flake-nimble";
  inputs."argument_parser".ref = "flake-pinning";
  inputs."argument_parser".dir = "nimpkgs/a/argument_parser";

  
  inputs."https://github.com/gradha/badger_bits.git".type = "github";
  inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  inputs."https://github.com/gradha/badger_bits.git".repo = "flake-nimble";
  inputs."https://github.com/gradha/badger_bits.git".ref = "flake-pinning";
  inputs."https://github.com/gradha/badger_bits.git".dir = "nimpkgs/h/https://github.com/gradha/badger_bits.git";

  outputs = { self, nixpkgs, src-dropbox_filename_sanitizer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dropbox_filename_sanitizer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dropbox_filename_sanitizer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}