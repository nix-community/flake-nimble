{
  description = ''
    Tiny pure Nim library to read PCAP files used by TcpDump/WinDump/Wireshark.
  '';
  inputs.src-pcap.url = "https://github.com/PMunch/nim-pcap";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
